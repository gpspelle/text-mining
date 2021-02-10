#!/bin/bash
_quaero="TP_ISD2020/QUAERO_FrenchPress"
python ner.py --config "quaero-100-demi.json" --num_epochs 10 --batch_size 16 \
 --loss_type sentence --optim sgd --learning_rate 0.01 --lr_decay 0.99999 --grad_clip 0.0 --warmup_steps 10 --weight_decay 0.0 --unk_replace 0.0 \
 --embedding sskip --embedding_dict "QUAERO_FrenchPress-w2v.vec.gz" --model_path "models/cbow_w2v_FrenchMed.model" \
 --train "$_quaero/fra4_ID.train" --dev "$_quaero/fra4_ID.dev" --test "$_quaero/fra4_ID.test"
