import os
import tarfile

from buildstream import Source, SourceError, Consistency
from buildstream import utils


class LocalTarSource(Source):

    def configure(self, node):
        project = self.get_project()

        self.node_validate(node, ['path'] + Source.COMMON_CONFIG_KEYS)
        self.path = self.node_get_member(node, str, 'path')
        self.fullpath = os.path.join(project.directory, self.path)

    def preflight(self):
        if not os.path.exists(self.fullpath):
            raise SourceError("Specified path '%s' does not exist" % self.path)

    def get_unique_key(self):
        return utils.sha256sum(self.fullpath)

    def get_consistency(self):
        return Consistency.CACHED

    def get_ref(self):
        return None

    def set_ref(self, ref, node):
        pass

    def fetch(self):
        pass

    def stage(self, directory):
        try:
            with tarfile.open(self.fullpath) as tar:
                def is_within_directory(directory, target):
                    
                    abs_directory = os.path.abspath(directory)
                    abs_target = os.path.abspath(target)
                
                    prefix = os.path.commonprefix([abs_directory, abs_target])
                    
                    return prefix == abs_directory
                
                def safe_extract(tar, path=".", members=None, *, numeric_owner=False):
                
                    for member in tar.getmembers():
                        member_path = os.path.join(path, member.name)
                        if not is_within_directory(path, member_path):
                            raise Exception("Attempted Path Traversal in Tar File")
                
                    tar.extractall(path, members, numeric_owner=numeric_owner) 
                    
                
                safe_extract(tar, path=directory)

        except (tarfile.TarError, OSError) as e:
            raise SourceError("{}: Error staging source: {}".format(self, e)) from e

def setup():
    return LocalTarSource
