module ApplicationHelper

    def resource_name
	    :user
	end

	def resource
	    @resource ||= User.new
	end
	
	def resource_class
		User
	end
	
	def devise_mapping
	    @devise_mapping ||= Devise.mappings[:user]
	end
	
	
	def notifications?
		true
	end

	def messages?
		true
	end


	
	def link_to_add_fields(name, f, association)
		new_object = f.object.class.reflect_on_association(association).klass.new
		fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
		  render(association.to_s.singularize + "_fields", :f => builder)
		end
		link_to(name, h("add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")"))
	  end
	  


	  def link_to_add_row(name, f, association, **args)
		new_object = f.object.send(association).klass.new
		id = new_object.object_id
		fields = f.fields_for(association, new_object, child_index: id) do |builder|
		  render(association.to_s.singularize, f: builder)
		end
		link_to(name, '#', class: "add_fields " + args[:class], data: {id: id, fields: fields.gsub("\n", "")})
	  end

	def current_company
	
		company = Company.take
		if company.present?
			company
		end
		
	end


	

	def is_account_locked?(user)
		if user.status == 'enable'
			false
		else
			true
		end
	end

	def is_app_name_exist?(user)
		app_name = get_app_name(user)
		if app_name.present?
			true
		else
			false
		end
	end

	

	def completed?(status)
		if status == 'yes'
			true
		else
			false
		end
	end
	def current_company
		company = Company.first
	end
end
