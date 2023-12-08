from datasets import list_datasets, load_dataset
import pandas as pd

dataset = load_dataset("yahoo_answers_topics")

print(dataset)

# Access a specific part of the dataset
train_dataset = dataset['train']
test_dataset = dataset['test']

train_df = pd.DataFrame(train_dataset)
test_df = pd.DataFrame(test_dataset)

train_df.to_csv("datasets/yahoo_topics_train.csv", index=False)
test_df.to_csv("datasets/yahoo_topics_test.csv", index=False)
