# frozen_string_literal: true

module ApplicationHelper
  def collection_boolean
    [['Sim', true], ['Não', false]]
  end

  def menu_active(controller)
    if controller.is_a?(Array)
      'active' if controller.any? { |c| c.to_s == controller_path }
    else
      'active' if controller.to_s == controller_path
    end
  end

  def association_for_select(sym_model)
    sym_model.to_s.classify.constantize.all.map { |model| [model.name, model.id] }
  end

  def link_to_menu(title, url, icon, controller = [])
    link_to url, class: menu_active(controller) do
      %(<div class="gui-icon">
          <i class="material-icons">#{icon}</i>
        </div>
        <span class="title">#{title}</span>).html_safe
    end
  end

  def link_to_edit(url)
    link_to fa_icon('pencil'), url, title: 'Editar', class: 'btn btn-floating-action btn-default'
  end

  def link_to_edit_password(url)
    link_to fa_icon('lock'), url, title: 'Editar Senha', class: 'btn btn-floating-action btn-default'
  end

  def link_to_show(url)
    link_to fa_icon('eye'), url, title: 'Visualizar', class: 'btn btn-floating-action btn-info'
  end

  def link_to_destroy(url)
    link_to fa_icon('trash'), url, title: 'Remover', method: :delete,
            data: { confirm: t('texts.actions.confirm') },
            class: 'btn btn-floating-action btn-danger'
  end

  def link_to_modal(label, url, opts = {})
    link_to label, url,
            class: opts[:class] || 'btn btn-default',
            data: { toggle: 'modal', target: '#modal' },
            remote: true
  end

  def link_to_approve(url, opts = {})
    link_to fa_icon('thumbs-up'),
            url,
            method: :post,
            title: 'Aprovar',
            class: opts[:class] || 'btn btn-floating-action btn-success',
            data: { confirm: t('confirm.approval') }
  end

  def link_to_update_password(url)
    link_to fa_icon('lock'), url, method: :patch,
            title: 'Gerar nova Senha',
            class: 'btn btn-floating-action btn-info',
            data: { confirm: 'Deseja realmente gerar uma nova senha?' }
  end

  def link_to_new(resource_url)
    link_to fa_icon('plus'),
            resource_url,
            class: 'btn btn-floating-action btn-primary'
  end
end
