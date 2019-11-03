from fairseq.data import data_utils

from . import BaseWrapperDataset


class NoPadDataset(BaseWrapperDataset):
    def __init__(self, dataset):
        super().__init__(dataset)
        self.dataset = dataset

    def __getitem__(self, index):
        item = self.dataset[index]
        return item

    def __len__(self):
        return len(self.dataset)

    def collater(self, samples):
        return samples
