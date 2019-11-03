wget -O gpt2_bpe_small/dict.txt https://dl.fbaipublicfiles.com/fairseq/gpt2_bpe/dict.txt
fairseq-preprocess \
    --only-source \
    --srcdict gpt2_bpe_small/dict.txt \
    --trainpref wikitext_small/wiki.train_small.bpe \
    --validpref wikitext_small/wiki.valid_small.bpe \
    --testpref wikitext_small/wiki.test_small.bpe \
    --destdir data-bin/wikitext_small \
    --dataset-impl 'raw' \
    --workers 60
