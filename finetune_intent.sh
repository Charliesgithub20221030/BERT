cd BERT/data_dir/;
curl -O https://storage.googleapis.com/bert_models/2018_11_03/chinese_L-12_H-768_A-12.zip;
unzip chinese_L-12_H-768_A-12.zip;
cd ../;
pip install -r requirements.txt;
python -m run_classifier \
--data_dir=data_dir \
--output_dir=output_dir \
--init_checkpoint=data_dir/chinese_L-12_H-768_A-12/bert_model.ckpt-best \
--bert_config_file=data_dir/chinese_L-12_H-768_A-12/bert_config.json \
--do_train=true \
--max_seq_length=128 \
--task_name=intent \
--learning_rate=2e-5 \
--train_batch_size=32 \
--vocab_file=data_dir/chinese_L-12_H-768_A-12/vocab.txt
--num_train_epochs=3.0 \

