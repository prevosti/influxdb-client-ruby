=begin
#Influx API Service

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech

=end

require 'cgi'

module InfluxDB2::API
  class LabelsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a label
    # @param label_id [String] The ID of the label to delete.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :zap_trace_span OpenTracing span context
    # @return [nil]
    def delete_labels_id(label_id, opts = {})
      delete_labels_id_with_http_info(label_id, opts)
      nil
    end

    # Delete a label
    # @param label_id [String] The ID of the label to delete.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :zap_trace_span OpenTracing span context
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_labels_id_with_http_info(label_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LabelsApi.delete_labels_id ...'
      end
      # verify the required parameter 'label_id' is set
      if @api_client.config.client_side_validation && label_id.nil?
        fail ArgumentError, "Missing the required parameter 'label_id' when calling LabelsApi.delete_labels_id"
      end
      # resource path
      local_var_path = '/labels/{labelID}'.sub('{' + 'labelID' + '}', CGI.escape(label_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Zap-Trace-Span'] = opts[:'zap_trace_span'] if !opts[:'zap_trace_span'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['header']

      new_options = opts.merge(
        :operation => :"LabelsApi.delete_labels_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelsApi#delete_labels_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all labels
    # @param [Hash] opts the optional parameters
    # @option opts [String] :zap_trace_span OpenTracing span context
    # @option opts [String] :org_id The organization ID.
    # @return [LabelsResponse]
    def get_labels(opts = {})
      data, _status_code, _headers = get_labels_with_http_info(opts)
      data
    end

    # Get all labels
    # @param [Hash] opts the optional parameters
    # @option opts [String] :zap_trace_span OpenTracing span context
    # @option opts [String] :org_id The organization ID.
    # @return [Array<(LabelsResponse, Integer, Hash)>] LabelsResponse data, response status code and response headers
    def get_labels_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LabelsApi.get_labels ...'
      end
      # resource path
      local_var_path = '/labels'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'orgID'] = opts[:'org_id'] if !opts[:'org_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Zap-Trace-Span'] = opts[:'zap_trace_span'] if !opts[:'zap_trace_span'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LabelsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['header']

      new_options = opts.merge(
        :operation => :"LabelsApi.get_labels",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelsApi#get_labels\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a label
    # @param label_id [String] The ID of the label to update.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :zap_trace_span OpenTracing span context
    # @return [LabelResponse]
    def get_labels_id(label_id, opts = {})
      data, _status_code, _headers = get_labels_id_with_http_info(label_id, opts)
      data
    end

    # Get a label
    # @param label_id [String] The ID of the label to update.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :zap_trace_span OpenTracing span context
    # @return [Array<(LabelResponse, Integer, Hash)>] LabelResponse data, response status code and response headers
    def get_labels_id_with_http_info(label_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LabelsApi.get_labels_id ...'
      end
      # verify the required parameter 'label_id' is set
      if @api_client.config.client_side_validation && label_id.nil?
        fail ArgumentError, "Missing the required parameter 'label_id' when calling LabelsApi.get_labels_id"
      end
      # resource path
      local_var_path = '/labels/{labelID}'.sub('{' + 'labelID' + '}', CGI.escape(label_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Zap-Trace-Span'] = opts[:'zap_trace_span'] if !opts[:'zap_trace_span'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LabelResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['header']

      new_options = opts.merge(
        :operation => :"LabelsApi.get_labels_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelsApi#get_labels_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a label
    # @param label_id [String] The ID of the label to update.
    # @param label_update [LabelUpdate] Label update
    # @param [Hash] opts the optional parameters
    # @option opts [String] :zap_trace_span OpenTracing span context
    # @return [LabelResponse]
    def patch_labels_id(label_id, label_update, opts = {})
      data, _status_code, _headers = patch_labels_id_with_http_info(label_id, label_update, opts)
      data
    end

    # Update a label
    # @param label_id [String] The ID of the label to update.
    # @param label_update [LabelUpdate] Label update
    # @param [Hash] opts the optional parameters
    # @option opts [String] :zap_trace_span OpenTracing span context
    # @return [Array<(LabelResponse, Integer, Hash)>] LabelResponse data, response status code and response headers
    def patch_labels_id_with_http_info(label_id, label_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LabelsApi.patch_labels_id ...'
      end
      # verify the required parameter 'label_id' is set
      if @api_client.config.client_side_validation && label_id.nil?
        fail ArgumentError, "Missing the required parameter 'label_id' when calling LabelsApi.patch_labels_id"
      end
      # verify the required parameter 'label_update' is set
      if @api_client.config.client_side_validation && label_update.nil?
        fail ArgumentError, "Missing the required parameter 'label_update' when calling LabelsApi.patch_labels_id"
      end
      # resource path
      local_var_path = '/labels/{labelID}'.sub('{' + 'labelID' + '}', CGI.escape(label_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Zap-Trace-Span'] = opts[:'zap_trace_span'] if !opts[:'zap_trace_span'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(label_update)

      # return_type
      return_type = opts[:debug_return_type] || 'LabelResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['header']

      new_options = opts.merge(
        :operation => :"LabelsApi.patch_labels_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelsApi#patch_labels_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a label
    # @param label_create_request [LabelCreateRequest] Label to create
    # @param [Hash] opts the optional parameters
    # @return [LabelResponse]
    def post_labels(label_create_request, opts = {})
      data, _status_code, _headers = post_labels_with_http_info(label_create_request, opts)
      data
    end

    # Create a label
    # @param label_create_request [LabelCreateRequest] Label to create
    # @param [Hash] opts the optional parameters
    # @return [Array<(LabelResponse, Integer, Hash)>] LabelResponse data, response status code and response headers
    def post_labels_with_http_info(label_create_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LabelsApi.post_labels ...'
      end
      # verify the required parameter 'label_create_request' is set
      if @api_client.config.client_side_validation && label_create_request.nil?
        fail ArgumentError, "Missing the required parameter 'label_create_request' when calling LabelsApi.post_labels"
      end
      # resource path
      local_var_path = '/labels'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(label_create_request)

      # return_type
      return_type = opts[:debug_return_type] || 'LabelResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['header']

      new_options = opts.merge(
        :operation => :"LabelsApi.post_labels",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelsApi#post_labels\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
