
NUM_WORDS=50001
OUTPUT_DIR="TFRecords" 
VOCAB_FILE="TFRecords/vocab.txt"
TOKENIZED_FILES="random_splits/*"

python src/data/preprocess_dataset.py \
  --input_files "$TOKENIZED_FILES" \
  --vocab_file $VOCAB_FILE \
  --output_dir $OUTPUT_DIR \
  --num_words $NUM_WORDS \
  --max_sentence_length 50 \
  --case_sensitive
