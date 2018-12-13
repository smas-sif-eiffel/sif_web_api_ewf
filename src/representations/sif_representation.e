note
	description: "Summary description for {SIF_REPRESENTATION}."
	author: "Paul Gokke"
	date: "$Date$"
	revision: "$Revision$"
	library: "System Interface Framework (SIF)"
	legal: "See notice at end of class."

deferred class
	SIF_REPRESENTATION
	inherit
		WSF_RESOURCE_HANDLER_HELPER

feature -- Parsing

	parse( req: WSF_REQUEST; a_sorted_set_of_interaction_elements: SIF_INTERACTION_ELEMENT_SORTED_SET; a_ie_set_to_publish: SIF_INTERACTION_ELEMENT_SORTED_SET ) : SIF_REPRESENTATION_PARSE_RESULT
			-- Positive result, if parseable and input validation succeeded and all mandatory elements are available and any optional elements match.
			-- The interaction elements to publish needs to be filled with the mandatory and any optional interaction elements mapped from the input stream to the sorted set of interaction elements,
			-- so these can be used to publish to the interactor during interaction
		deferred
		end

feature -- Status

	type: like {SIF_REPRESENTATION_ENUMERATION}.type
			-- Type of the representation by enumeration
		deferred
		end

feature frozen -- Representational

	represent(req: WSF_REQUEST; res: WSF_RESPONSE; a_handler: SIF_WEB_API_REQUEST_HANDLER; a_sorted_set_of_interaction_elements: SIF_INTERACTION_ELEMENT_SORTED_SET)
			-- Result contains representation
		do
			do_represent(req, res, a_handler, a_sorted_set_of_interaction_elements)
		end

feature {NONE} -- Implementation

	do_represent(req: WSF_REQUEST; res: WSF_RESPONSE; a_handler: SIF_WEB_API_REQUEST_HANDLER; a_sorted_set_of_interaction_elements: SIF_INTERACTION_ELEMENT_SORTED_SET)
			-- Create a representation by using the interaction elements which contain the information for the content.
		deferred
		end

note
	copyright: "Copyright (c) 2014-2016, SMA Services"
	license:   "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			SMA Services
			Website: http://www.sma-services.com
		]"

end
