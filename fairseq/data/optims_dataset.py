import numpy as np
import torch

from . import BaseWrapperDataset


class OptimsDataset(BaseWrapperDataset):

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



