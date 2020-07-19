import random
import os

MAX_TICKS = 50000
MIN_RAND = 0
MAX_RAND = 99
MCFUNCTION_FILENAME = 'calculate_random.mcfunction'

def write_mcfunction_file(file_content):
    with open(os.path.dirname(os.path.abspath(__file__)) + '/' + MCFUNCTION_FILENAME, 'w') as f:
        for item in file_content:
            f.write("%s\n" % item)

def generate_file_content():
    rand_ints = [random.randrange(MIN_RAND, MAX_RAND + 1, 1) for _ in range(MAX_TICKS + 1)]
    file_content = ['# Ticks maximos de la seed: {0}'.format(MAX_TICKS)]
    for i, x in enumerate(rand_ints):
        line = 'execute if score Server spwnTickRandCntr matches {0} run scoreboard players set Server spwnTickRndValue {1}'.format(i, x)
        file_content.append(line)
    return file_content

if __name__ == "__main__":
    file_content = generate_file_content()
    write_mcfunction_file(file_content)