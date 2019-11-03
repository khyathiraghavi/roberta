mkdir -p gpt2_bpe_small
wget -O gpt2_bpe_small/encoder.json https://dl.fbaipublicfiles.com/fairseq/gpt2_bpe/encoder.json
wget -O gpt2_bpe_small/vocab.bpe https://dl.fbaipublicfiles.com/fairseq/gpt2_bpe/vocab.bpe
for SPLIT in train_small valid_small test_small; do \
    python -m examples.roberta.multiprocessing_bpe_encoder \
        --encoder-json gpt2_bpe_small/encoder.json \
        --vocab-bpe gpt2_bpe_small/vocab.bpe \
        --inputs wikitext_small/wiki.${SPLIT}.raw \
        --outputs wikitext_small/wiki.${SPLIT}.bpe \
        --keep-empty \
        --workers 60; \
done
