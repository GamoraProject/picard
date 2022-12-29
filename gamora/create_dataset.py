import csv
import json

def create_json_from_gt_query(query, text):
    """
    Given SQL query, create the ground truth JSON
    """
    json_dict = {"db_id": "asana"}
    json_dict["query"] = query
    json_dict["question"] = text
    return json_dict

def process_ground_truth_excel(csv_in, json_out):
    list_of_dict = []
    with open(csv_in) as csvfile:
        csv_reader = csv.reader(csvfile, delimiter=',')
        for row in csv_reader:
            print(row)
            if row[0] == '' or row[1] == '':
                continue
            if row[0][0] == '\ufeff':
                row[0] = row[0].replace('asana.', '')
                row[0] = row[0].replace('current_date()', '\'22/11/22\'')
                row[1] = row[1].replace('current_date()', '\'22/11/22\'')
                row[0] = row[0].replace('CURDATE() + INTERVAL 7 DAY', '\'21/11/22\'')
                row[1] = row[1].replace('CURDATE() + INTERVAL 7 DAY', '\'21/11/22\'')
                row[0] = row[0].replace('CURDATE() - INTERVAL 7 DAY', '\'21/11/22\'')
                row[1] = row[1].replace('CURDATE() - INTERVAL 7 DAY', '\'21/11/22\'')
                row[0] = row[0].replace('CURDATE() - INTERVAL 1 DAY', '\'21/11/22\'')
                row[1] = row[1].replace('CURDATE() - INTERVAL 1 DAY', '\'21/11/22\'')
                row[0] = row[0].replace('Asana.', '')
                row[1] = row[1].replace('asana.', '')
                row[1] = row[1].replace('Asana.', '')
                row[1] = row[1].replace("“High”", "\'High\'")
                row[0] = row[0].replace("“High”", "\'High\'")
                json_dict = create_json_from_gt_query(row[1], row[0][1:])
            else:
                row[0] = row[0].replace('asana.', '')
                row[0] = row[0].replace('Asana.', '')
                row[1] = row[1].replace('asana.', '')
                row[1] = row[1].replace('Asana.', '')
                row[0] = row[0].replace('current_date()', '\'22/11/22\'')
                row[1] = row[1].replace('current_date()', '\'22/11/22\'')
                row[0] = row[0].replace('CURDATE() + INTERVAL 7 DAY', '\'21/11/22\'')
                row[1] = row[1].replace('CURDATE() + INTERVAL 7 DAY', '\'21/11/22\'')
                row[0] = row[0].replace('CURDATE() - INTERVAL 7 DAY', '\'21/11/22\'')
                row[1] = row[1].replace('CURDATE() - INTERVAL 7 DAY', '\'21/11/22\'')
                row[0] = row[0].replace('CURDATE() - INTERVAL 1 DAY', '\'21/11/22\'')
                row[1] = row[1].replace('CURDATE() - INTERVAL 1 DAY', '\'21/11/22\'')
                row[1] = row[1].replace("“High”", "\'High\'")
                row[0] = row[0].replace("“High”", "\'High\'")
                json_dict = create_json_from_gt_query(row[1], row[0])
            list_of_dict.append(json_dict)

    with open(json_out, "w") as dump_f:
        json.dump(list_of_dict,dump_f)

process_ground_truth_excel("asana.csv", "train_asana.json")