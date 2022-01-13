#ANOTAÇOES
#Puxar do commons.rb para o arquivo de step definition deixa o código mais organizado.
#EU CRIARIA UM ARQUIVO YML PARA ARMAZENAR OS XPATHS, MAS VISTO QUE O CÓDIGO É PEQUENO NÃO PRECISA.

def page
    Capybara.current_session
end

public def click_button(button_text)
    page.find("//*[contains(@class, 'btn') and text() = '#{button_text}']").click
end

public def fill_field(field, value)
    page.find("//label[contains(text(),'#{field}')]/following::input[1]").set("#{value}")
end

public def fill_filter_field(value)
    page.find("//*[@name='filter']").send_keys "#{value}"
end

public def delete_contact(contact)
    page.find("*//td/strong[contains(text(),'#{contact}')]/../following-sibling::td[1]/form/input").click
end

public def alter_contact(contact)
    page.find("*//td/strong[contains(text(),'#{contact}')]/../following-sibling::td/form/a").click
end

# public def alter_contact(contact)
# byebug
#     if action = "Alterar"
#         page.find("*//td/strong[contains(text(),'#{contact}')]/../following-sibling::td/form/a").click
#     elsif action = "Excluir"
#         page.find("*//td/strong[contains(text(),'#{contact}')]/../following-sibling::td[1]/form/input").click
#     else
#         puts "There is no such action for this option!"
#     end
# end

# public def should_not_see(value)
#     byebug
# end