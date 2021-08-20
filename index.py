from tkinter import Tk, simpledialog, messagebox 

def read_from_file():
    with open('data.txt') as file:
        for line in file:
            line = line.rstrip('\n')
            country, city = line.split('/')
            the_world[country] = city

def write_to_file(country_name, city_name):
    with open('data.txt', 'a') as file:
        file.write('\n' + country_name + '/' + city_name)

print('OverTech - PythonPedia')
root = Tk()
root.withdraw()
the_world = {}
read_from_file()

while True:
    query_country = simpledialog.askstring('PythonPedia', 'Type your word')
    query_country = query_country.capitalize()
    if query_country in the_world:
        result = the_world[query_country]
        messagebox.showinfo('PythonPedia',
                             result )
    else:
        messagebox.showinfo('PythonPedia',
                            'Sorry that word was not found, is the word spelled correctly? If not, that word is not supported, please write and fill in the \'New Word form\'')
        
        root.mainloop()
