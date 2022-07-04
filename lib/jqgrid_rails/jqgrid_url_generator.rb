module JqGridRails
  class UrlGenerator
   def included(base)
       @parent = base
   end

   def method_missing method, *args
       super unless @parent.methods.index method
       @parent.send(method,args)
   end
  end
end
