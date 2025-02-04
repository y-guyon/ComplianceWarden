%define BE(a) ( ((((a)>>24)&0xFF) << 0) + ((((a)>>16)&0xFF) << 8) + ((((a)>>8)&0xFF) << 16)  + ((((a)>>0)&0xFF) << 24))

ftyp_start:
    dd BE(ftyp_end - ftyp_start)
    dd "ftyp"
    db 0x6D, 0x69, 0x66, 0x31 ; brand(32) ('mif1') 
    db 0x00, 0x00, 0x00, 0x00 ; version(32) 
    db 0x6D, 0x69, 0x66, 0x31 ; compatible_brand(32) ('mif1') 
    db 0x61, 0x76, 0x69, 0x66 ; compatible_brand(32) ('avif') 
    db 0x6D, 0x69, 0x61, 0x66 ; compatible_brand(32) ('miaf') 
ftyp_end:
meta_start:
    dd BE(meta_end - meta_start)
    dd "meta"
    db 0x00 ; version(8) 
    db 0x00, 0x00, 0x00 ; flags(24) 
    hdlr_start:
        dd BE(hdlr_end - hdlr_start)
        dd "hdlr"
        db 0x00 ; version(8) 
        db 0x00, 0x00, 0x00 ; flags(24) 
        db 0x00, 0x00, 0x00, 0x00 ; pre_defined(32) 
        db 0x70, 0x69, 0x63, 0x74 ; handler_type(32) ('pict') 
        db 0x00, 0x00, 0x00, 0x00 ; reserved1(32) 
        db 0x00, 0x00, 0x00, 0x00 ; reserved2(32) 
        db 0x00, 0x00, 0x00, 0x00 ; reserved3(32) 
        db 0x00 ; name(8) 
    hdlr_end:
    pitm_start:
        dd BE(pitm_end - pitm_start)
        dd "pitm"
        db 0x00 ; version(8) 
        db 0x00, 0x00, 0x00 ; flags(24) 
        db 0x00, 0x12 ; item_ID(16) 
    pitm_end:
    iloc_start:
        dd BE(iloc_end - iloc_start)
        dd "iloc"
        db 0x00 ; version(8) 
        db 0x00, 0x00, 0x00 ; flags(24) 
        db 0x04 ; offset_size(4) length_size(4) 
        db 0x40 ; base_offset_size(4) ('@') reserved1(4) ('@') 
        db 0x00, 0x12 ; item_count(16) 
        db 0x00, 0x01 ; item_ID(16) 
        db 0x00, 0x00 ; data_reference_index(16) 
        dd BE(mdat_start - ftyp_start + 8) ; base_offset(32) 
        db 0x00, 0x00 ; extent_count(16) 
        db 0x00, 0x02 ; item_ID(16) 
        db 0x00, 0x00 ; data_reference_index(16) 
        dd BE(mdat_start - ftyp_start + 8) ; base_offset(32) 
        db 0x00, 0x00 ; extent_count(16) 
        db 0x00, 0x03 ; item_ID(16) 
        db 0x00, 0x00 ; data_reference_index(16) 
        dd BE(mdat_start - ftyp_start + 8) ; base_offset(32) 
        db 0x00, 0x00 ; extent_count(16) 
        db 0x00, 0x04 ; item_ID(16) 
        db 0x00, 0x00 ; data_reference_index(16) 
        dd BE(mdat_start - ftyp_start + 8) ; base_offset(32) 
        db 0x00, 0x00 ; extent_count(16) 
        db 0x00, 0x05 ; item_ID(16) 
        db 0x00, 0x00 ; data_reference_index(16) 
        dd BE(mdat_start - ftyp_start + 8) ; base_offset(32) 
        db 0x00, 0x00 ; extent_count(16) 
        db 0x00, 0x06 ; item_ID(16) 
        db 0x00, 0x00 ; data_reference_index(16) 
        dd BE(mdat_start - ftyp_start + 8) ; base_offset(32) 
        db 0x00, 0x00 ; extent_count(16) 
        db 0x00, 0x07 ; item_ID(16) 
        db 0x00, 0x00 ; data_reference_index(16) 
        dd BE(mdat_start - ftyp_start + 8) ; base_offset(32) 
        db 0x00, 0x00 ; extent_count(16) 
        db 0x00, 0x08 ; item_ID(16) 
        db 0x00, 0x00 ; data_reference_index(16) 
        dd BE(mdat_start - ftyp_start + 8) ; base_offset(32) 
        db 0x00, 0x00 ; extent_count(16) 
        db 0x00, 0x09 ; item_ID(16) 
        db 0x00, 0x00 ; data_reference_index(16) 
        dd BE(mdat_start - ftyp_start + 8) ; base_offset(32) 
        db 0x00, 0x00 ; extent_count(16) 
        db 0x00, 0x0A ; item_ID(16) 
        db 0x00, 0x00 ; data_reference_index(16) 
        dd BE(mdat_start - ftyp_start + 8) ; base_offset(32) 
        db 0x00, 0x00 ; extent_count(16) 
        db 0x00, 0x0B ; item_ID(16) 
        db 0x00, 0x00 ; data_reference_index(16) 
        dd BE(mdat_start - ftyp_start + 8) ; base_offset(32) 
        db 0x00, 0x00 ; extent_count(16) 
        db 0x00, 0x0C ; item_ID(16) 
        db 0x00, 0x00 ; data_reference_index(16) 
        dd BE(mdat_start - ftyp_start + 8) ; base_offset(32) 
        db 0x00, 0x00 ; extent_count(16) 
        db 0x00, 0x0D ; item_ID(16) 
        db 0x00, 0x00 ; data_reference_index(16) 
        dd BE(mdat_start - ftyp_start + 8) ; base_offset(32) 
        db 0x00, 0x01 ; extent_count(16) 
         ; extent_offset(0) 
        db 0x00, 0x00, 0x00, 0x08 ; extent_length(32) 
        db 0x00, 0x0E ; item_ID(16) 
        db 0x00, 0x00 ; data_reference_index(16) 
        dd BE(mdat_start - ftyp_start + 8) ; base_offset(32) 
        db 0x00, 0x01 ; extent_count(16) 
         ; extent_offset(0) 
        db 0x00, 0x00, 0x00, 0x08 ; extent_length(32) 
        db 0x00, 0x0F ; item_ID(16) 
        db 0x00, 0x00 ; data_reference_index(16) 
        dd BE(mdat_start - ftyp_start + 8) ; base_offset(32) 
        db 0x00, 0x00 ; extent_count(16) 
        db 0x00, 0x10 ; item_ID(16) 
        db 0x00, 0x00 ; data_reference_index(16) 
        dd BE(mdat_start - ftyp_start + 8) ; base_offset(32) 
        db 0x00, 0x00 ; extent_count(16) 
        db 0x00, 0x11 ; item_ID(16) 
        db 0x00, 0x00 ; data_reference_index(16) 
        dd BE(mdat_start - ftyp_start + 8) ; base_offset(32) 
        db 0x00, 0x01 ; extent_count(16) 
         ; extent_offset(0) 
        db 0x00, 0x00, 0x00, 0x01 ; extent_length(32) 
        db 0x00, 0x12 ; item_ID(16) 
        db 0x00, 0x00 ; data_reference_index(16) 
        dd BE(mdat_start - ftyp_start + 8) ; base_offset(32) 
        db 0x00, 0x00 ; extent_count(16) 
    iloc_end:
    iinf_start:
        dd BE(iinf_end - iinf_start)
        dd "iinf"
        db 0x00 ; version(8) 
        db 0x00, 0x00, 0x00 ; flags(24) 
        db 0x00, 0x12 ; entry_count(16) 
        infe_start:
            dd BE(infe_end - infe_start)
            dd "infe"
            db 0x02 ; version(8) 
            db 0x00, 0x00, 0x00 ; flags(24) 
            db 0x00, 0x01 ; item_ID(16) 
            db 0x00, 0x00 ; item_protection_index(16) 
            db 0x61, 0x76, 0x30, 0x31 ; item_type(32) ('av01') 
            db 0x49 ; item_name(8) ('I') 
            db 0x6D ; item_name(8) ('m') 
            db 0x61 ; item_name(8) ('a') 
            db 0x67 ; item_name(8) ('g') 
            db 0x65 ; item_name(8) ('e') 
            db 0x00 ; item_name(8) 
        infe_end:
        infe2_start:
            dd BE(infe2_end - infe2_start)
            dd "infe"
            db 0x02 ; version(8) 
            db 0x00, 0x00, 0x00 ; flags(24) 
            db 0x00, 0x02 ; item_ID(16) 
            db 0x00, 0x00 ; item_protection_index(16) 
            db 0x61, 0x76, 0x30, 0x31 ; item_type(32) ('av01') 
            db 0x49 ; item_name(8) ('I') 
            db 0x6D ; item_name(8) ('m') 
            db 0x61 ; item_name(8) ('a') 
            db 0x67 ; item_name(8) ('g') 
            db 0x65 ; item_name(8) ('e') 
            db 0x00 ; item_name(8) 
        infe2_end:
        infe3_start:
            dd BE(infe3_end - infe3_start)
            dd "infe"
            db 0x02 ; version(8) 
            db 0x00, 0x00, 0x00 ; flags(24) 
            db 0x00, 0x03 ; item_ID(16) 
            db 0x00, 0x00 ; item_protection_index(16) 
            db 0x61, 0x76, 0x30, 0x31 ; item_type(32) ('av01') 
            db 0x49 ; item_name(8) ('I') 
            db 0x6D ; item_name(8) ('m') 
            db 0x61 ; item_name(8) ('a') 
            db 0x67 ; item_name(8) ('g') 
            db 0x65 ; item_name(8) ('e') 
            db 0x00 ; item_name(8) 
        infe3_end:
        infe4_start:
            dd BE(infe4_end - infe4_start)
            dd "infe"
            db 0x02 ; version(8) 
            db 0x00, 0x00, 0x00 ; flags(24) 
            db 0x00, 0x04 ; item_ID(16) 
            db 0x00, 0x00 ; item_protection_index(16) 
            db 0x61, 0x76, 0x30, 0x31 ; item_type(32) ('av01') 
            db 0x49 ; item_name(8) ('I') 
            db 0x6D ; item_name(8) ('m') 
            db 0x61 ; item_name(8) ('a') 
            db 0x67 ; item_name(8) ('g') 
            db 0x65 ; item_name(8) ('e') 
            db 0x00 ; item_name(8) 
        infe4_end:
        infe5_start:
            dd BE(infe5_end - infe5_start)
            dd "infe"
            db 0x02 ; version(8) 
            db 0x00, 0x00, 0x00 ; flags(24) 
            db 0x00, 0x05 ; item_ID(16) 
            db 0x00, 0x00 ; item_protection_index(16) 
            db 0x61, 0x76, 0x30, 0x31 ; item_type(32) ('av01') 
            db 0x49 ; item_name(8) ('I') 
            db 0x6D ; item_name(8) ('m') 
            db 0x61 ; item_name(8) ('a') 
            db 0x67 ; item_name(8) ('g') 
            db 0x65 ; item_name(8) ('e') 
            db 0x00 ; item_name(8) 
        infe5_end:
        infe6_start:
            dd BE(infe6_end - infe6_start)
            dd "infe"
            db 0x02 ; version(8) 
            db 0x00, 0x00, 0x00 ; flags(24) 
            db 0x00, 0x06 ; item_ID(16) 
            db 0x00, 0x00 ; item_protection_index(16) 
            db 0x61, 0x76, 0x30, 0x31 ; item_type(32) ('av01') 
            db 0x49 ; item_name(8) ('I') 
            db 0x6D ; item_name(8) ('m') 
            db 0x61 ; item_name(8) ('a') 
            db 0x67 ; item_name(8) ('g') 
            db 0x65 ; item_name(8) ('e') 
            db 0x00 ; item_name(8) 
        infe6_end:
        infe7_start:
            dd BE(infe7_end - infe7_start)
            dd "infe"
            db 0x02 ; version(8) 
            db 0x00, 0x00, 0x00 ; flags(24) 
            db 0x00, 0x07 ; item_ID(16) 
            db 0x00, 0x00 ; item_protection_index(16) 
            db 0x61, 0x76, 0x30, 0x31 ; item_type(32) ('av01') 
            db 0x49 ; item_name(8) ('I') 
            db 0x6D ; item_name(8) ('m') 
            db 0x61 ; item_name(8) ('a') 
            db 0x67 ; item_name(8) ('g') 
            db 0x65 ; item_name(8) ('e') 
            db 0x00 ; item_name(8) 
        infe7_end:
        infe8_start:
            dd BE(infe8_end - infe8_start)
            dd "infe"
            db 0x02 ; version(8) 
            db 0x00, 0x00, 0x00 ; flags(24) 
            db 0x00, 0x08 ; item_ID(16) 
            db 0x00, 0x00 ; item_protection_index(16) 
            db 0x61, 0x76, 0x30, 0x31 ; item_type(32) ('av01') 
            db 0x49 ; item_name(8) ('I') 
            db 0x6D ; item_name(8) ('m') 
            db 0x61 ; item_name(8) ('a') 
            db 0x67 ; item_name(8) ('g') 
            db 0x65 ; item_name(8) ('e') 
            db 0x00 ; item_name(8) 
        infe8_end:
        infe9_start:
            dd BE(infe9_end - infe9_start)
            dd "infe"
            db 0x02 ; version(8) 
            db 0x00, 0x00, 0x00 ; flags(24) 
            db 0x00, 0x09 ; item_ID(16) 
            db 0x00, 0x00 ; item_protection_index(16) 
            db 0x69, 0x64, 0x65, 0x6E ; item_type(32) ('iden') 
            db 0x00 ; item_name(8) 
        infe9_end:
        infe10_start:
            dd BE(infe10_end - infe10_start)
            dd "infe"
            db 0x02 ; version(8) 
            db 0x00, 0x00, 0x00 ; flags(24) 
            db 0x00, 0x0A ; item_ID(16) 
            db 0x00, 0x00 ; item_protection_index(16) 
            db 0x69, 0x64, 0x65, 0x6E ; item_type(32) ('iden') 
            db 0x00 ; item_name(8) 
        infe10_end:
        infe11_start:
            dd BE(infe11_end - infe11_start)
            dd "infe"
            db 0x02 ; version(8) 
            db 0x00, 0x00, 0x00 ; flags(24) 
            db 0x00, 0x0B ; item_ID(16) 
            db 0x00, 0x00 ; item_protection_index(16) 
            db 0x69, 0x64, 0x65, 0x6E ; item_type(32) ('iden') 
            db 0x00 ; item_name(8) 
        infe11_end:
        infe12_start:
            dd BE(infe12_end - infe12_start)
            dd "infe"
            db 0x02 ; version(8) 
            db 0x00, 0x00, 0x00 ; flags(24) 
            db 0x00, 0x0C ; item_ID(16) 
            db 0x00, 0x00 ; item_protection_index(16) 
            db 0x69, 0x64, 0x65, 0x6E ; item_type(32) ('iden') 
            db 0x00 ; item_name(8) 
        infe12_end:
        infe13_start:
            dd BE(infe13_end - infe13_start)
            dd "infe"
            db 0x02 ; version(8) 
            db 0x00, 0x00, 0x00 ; flags(24) 
            db 0x00, 0x0D ; item_ID(16) 
            db 0x00, 0x00 ; item_protection_index(16) 
            db 0x67, 0x72, 0x69, 0x64 ; item_type(32) ('grid') 
            db 0x00 ; item_name(8) 
        infe13_end:
        infe14_start:
            dd BE(infe14_end - infe14_start)
            dd "infe"
            db 0x02 ; version(8) 
            db 0x00, 0x00, 0x00 ; flags(24) 
            db 0x00, 0x0E ; item_ID(16) 
            db 0x00, 0x00 ; item_protection_index(16) 
            db 0x67, 0x72, 0x69, 0x64 ; item_type(32) ('grid') 
            db 0x00 ; item_name(8) 
        infe14_end:
        infe15_start:
            dd BE(infe15_end - infe15_start)
            dd "infe"
            db 0x02 ; version(8) 
            db 0x00, 0x00, 0x00 ; flags(24) 
            db 0x00, 0x0F ; item_ID(16) 
            db 0x00, 0x00 ; item_protection_index(16) 
            db 0x69, 0x64, 0x65, 0x6E ; item_type(32) ('iden') 
            db 0x00 ; item_name(8) 
        infe15_end:
        infe16_start:
            dd BE(infe16_end - infe16_start)
            dd "infe"
            db 0x02 ; version(8) 
            db 0x00, 0x00, 0x00 ; flags(24) 
            db 0x00, 0x10 ; item_ID(16) 
            db 0x00, 0x00 ; item_protection_index(16) 
            db 0x69, 0x64, 0x65, 0x6E ; item_type(32) ('iden') 
            db 0x00 ; item_name(8) 
        infe16_end:
        infe17_start:
            dd BE(infe17_end - infe17_start)
            dd "infe"
            db 0x02 ; version(8) 
            db 0x00, 0x00, 0x01 ; flags(24) 
            db 0x00, 0x11 ; item_ID(16) 
            db 0x00, 0x00 ; item_protection_index(16) 
            db 0x69, 0x6F, 0x76, 0x6C ; item_type(32) ('iovl') 
            db 0x00 ; item_name(8) 
        infe17_end:
        infe18_start:
            dd BE(infe18_end - infe18_start)
            dd "infe"
            db 0x02 ; version(8) 
            db 0x00, 0x00, 0x00 ; flags(24) 
            db 0x00, 0x12 ; item_ID(16) 
            db 0x00, 0x00 ; item_protection_index(16) 
            db 0x69, 0x64, 0x65, 0x6E ; item_type(32) ('iden') 
            db 0x00 ; item_name(8) 
        infe18_end:
    iinf_end:
    iref_start:
        dd BE(iref_end - iref_start)
        dd "iref"
        db 0x00 ; version(8) 
        db 0x00, 0x00, 0x00 ; flags(24) 
        db 0x00, 0x00, 0x00, 0x0E ; box_size(32) 
        db 0x64, 0x69, 0x6D, 0x67 ; box_type(32) ('dimg') 
        db 0x00, 0x09 ; from_item_ID(16) 
        db 0x00, 0x01 ; reference_count(16) 
        db 0x00, 0x01 ; to_item_ID(16) 
        db 0x00, 0x00, 0x00, 0x0E ; box_size(32) 
        db 0x64, 0x69, 0x6D, 0x67 ; box_type(32) ('dimg') 
        db 0x00, 0x0A ; from_item_ID(16) 
        db 0x00, 0x01 ; reference_count(16) 
        db 0x00, 0x02 ; to_item_ID(16) 
        db 0x00, 0x00, 0x00, 0x0E ; box_size(32) 
        db 0x64, 0x69, 0x6D, 0x67 ; box_type(32) ('dimg') 
        db 0x00, 0x0B ; from_item_ID(16) 
        db 0x00, 0x01 ; reference_count(16) 
        db 0x00, 0x05 ; to_item_ID(16) 
        db 0x00, 0x00, 0x00, 0x0E ; box_size(32) 
        db 0x64, 0x69, 0x6D, 0x67 ; box_type(32) ('dimg') 
        db 0x00, 0x0C ; from_item_ID(16) 
        db 0x00, 0x01 ; reference_count(16) 
        db 0x00, 0x06 ; to_item_ID(16) 
        db 0x00, 0x00, 0x00, 0x14 ; box_size(32) 
        db 0x64, 0x69, 0x6D, 0x67 ; box_type(32) ('dimg') 
        db 0x00, 0x0D ; from_item_ID(16) 
        db 0x00, 0x04 ; reference_count(16) 
        db 0x00, 0x09 ; to_item_ID(16) 
        db 0x00, 0x0A ; to_item_ID(16) 
        db 0x00, 0x03 ; to_item_ID(16) 
        db 0x00, 0x04 ; to_item_ID(16) 
        db 0x00, 0x00, 0x00, 0x14 ; box_size(32) 
        db 0x64, 0x69, 0x6D, 0x67 ; box_type(32) ('dimg') 
        db 0x00, 0x0E ; from_item_ID(16) 
        db 0x00, 0x04 ; reference_count(16) 
        db 0x00, 0x0B ; to_item_ID(16) 
        db 0x00, 0x0C ; to_item_ID(16) 
        db 0x00, 0x07 ; to_item_ID(16) 
        db 0x00, 0x08 ; to_item_ID(16) 
        db 0x00, 0x00, 0x00, 0x0E ; box_size(32) 
        db 0x64, 0x69, 0x6D, 0x67 ; box_type(32) ('dimg') 
        db 0x00, 0x0F ; from_item_ID(16) 
        db 0x00, 0x01 ; reference_count(16) 
        db 0x00, 0x0D ; to_item_ID(16) 
        db 0x00, 0x00, 0x00, 0x0E ; box_size(32) 
        db 0x64, 0x69, 0x6D, 0x67 ; box_type(32) ('dimg') 
        db 0x00, 0x10 ; from_item_ID(16) 
        db 0x00, 0x01 ; reference_count(16) 
        db 0x00, 0x02 ; to_item_ID(16) 
        db 0x00, 0x00, 0x00, 0x10 ; box_size(32) 
        db 0x64, 0x69, 0x6D, 0x67 ; box_type(32) ('dimg') 
        db 0x00, 0x11 ; from_item_ID(16) 
        db 0x00, 0x02 ; reference_count(16) 
        db 0x00, 0x0F ; to_item_ID(16) 
        db 0x00, 0x10 ; to_item_ID(16) 
        db 0x00, 0x00, 0x00, 0x0E ; box_size(32) 
        db 0x64, 0x69, 0x6D, 0x67 ; box_type(32) ('dimg') 
        db 0x00, 0x12 ; from_item_ID(16) 
        db 0x00, 0x01 ; reference_count(16) 
        db 0x00, 0x11 ; to_item_ID(16) 
    iref_end:
    iprp_start:
        dd BE(iprp_end - iprp_start)
        dd "iprp"
        ipco_start:
            dd BE(ipco_end - ipco_start)
            dd "ipco"
            ispe_start:
                dd BE(ispe_end - ispe_start)
                dd "ispe"
                db 0x00 ; version(8) 
                db 0x00, 0x00, 0x00 ; flags(24) 
                db 0x00, 0x00, 0x00, 0x40 ; image_width(32) 
                db 0x00, 0x00, 0x00, 0x40 ; image_height(32) 
            ispe_end:
            pasp_start:
                dd BE(pasp_end - pasp_start)
                dd "pasp"
                db 0x00, 0x00, 0x00, 0x01 ; hSpacing(32) 
                db 0x00, 0x00, 0x00, 0x01 ; vSpacing(32) 
            pasp_end:
            av1C_start:
                dd BE(av1C_end - av1C_start)
                dd "av1C"
                db 0x81 ; marker(1) version(7) 
                db 0x20 ; seq_profile(3) (' ') seq_level_idx_0(5) (' ') 
                db 0x00 ; seq_tier_0(1) high_bitdepth(1) twelve_bit(1) monochrome(1) chroma_subsampling_x(1) chroma_subsampling_y(1) chroma_sample_position(2) 
                db 0x00 ; reserved(3) initial_presentation_delay_present(1) reserved(4) 
                 ; configOBUs(0) 
            av1C_end:
            pixi_start:
                dd BE(pixi_end - pixi_start)
                dd "pixi"
                db 0x00 ; (8) 
                db 0x00 ; (8) 
                db 0x00 ; (8) 
                db 0x00 ; (8) 
                db 0x03 ; (8) 
                db 0x08 ; (8) 
                db 0x00 ; (8) 
                db 0x00 ; (8) 
            pixi_end:
            ispe2_start:
                dd BE(ispe2_end - ispe2_start)
                dd "ispe"
                db 0x00 ; version(8) 
                db 0x00, 0x00, 0x00 ; flags(24) 
                db 0x00, 0x00, 0x00, 0x80 ; image_width(32) 
                db 0x00, 0x00, 0x00, 0x80 ; image_height(32) 
            ispe2_end:
            irot_start:
                dd BE(irot_end - irot_start)
                dd "irot"
                db 0x01 ; (8) 
            irot_end:
            imir_start:
                dd BE(imir_end - imir_start)
                dd "imir"
                db 0x01 ; (8) 
            imir_end:
            ispe3_start:
                dd BE(ispe3_end - ispe3_start)
                dd "ispe"
                db 0x00 ; version(8) 
                db 0x00, 0x00, 0x00 ; flags(24) 
                db 0x00, 0x00, 0x01, 0x00 ; image_width(32) 
                db 0x00, 0x00, 0x01, 0x00 ; image_height(32) 
            ispe3_end:
            ispe4_start:
                dd BE(ispe4_end - ispe4_start)
                dd "ispe"
                db 0x00 ; version(8) 
                db 0x00, 0x00, 0x00 ; flags(24) 
                db 0x00, 0x00, 0x00, 0x80 ; image_width(32) 
                db 0x00, 0x00, 0x00, 0x40 ; image_height(32) 
            ispe4_end:
            clap_start:
                dd BE(clap_end - clap_start)
                dd "clap"
                db 0x00 ; (8) 
                db 0x00 ; (8) 
                db 0x00 ; (8) 
                db 0x80 ; (8) 
                db 0x00 ; (8) 
                db 0x00 ; (8) 
                db 0x00 ; (8) 
                db 0x01 ; (8) 
                db 0x00 ; (8) 
                db 0x00 ; (8) 
                db 0x00 ; (8) 
                db 0x40 ; (8) ('@') 
                db 0x00 ; (8) 
                db 0x00 ; (8) 
                db 0x00 ; (8) 
                db 0x01 ; (8) 
                db 0x00 ; (8) 
                db 0x00 ; (8) 
                db 0x00 ; (8) 
                db 0x64 ; (8) ('d') 
                db 0x00 ; (8) 
                db 0x00 ; (8) 
                db 0x00 ; (8) 
                db 0x01 ; (8) 
                db 0x00 ; (8) 
                db 0x00 ; (8) 
                db 0x00 ; (8) 
                db 0x32 ; (8) ('2') 
                db 0x00 ; (8) 
                db 0x00 ; (8) 
                db 0x00 ; (8) 
                db 0x01 ; (8) 
            clap_end:
            ispe5_start:
                dd BE(ispe5_end - ispe5_start)
                dd "ispe"
                db 0x00 ; version(8) 
                db 0x00, 0x00, 0x00 ; flags(24) 
                db 0x00, 0x00, 0x02, 0x00 ; image_width(32) 
                db 0x00, 0x00, 0x02, 0x00 ; image_height(32) 
            ispe5_end:
        ipco_end:
        ipma_start:
            dd BE(ipma_end - ipma_start)
            dd "ipma"
            db 0x00 ; version(8) 
            db 0x00, 0x00, 0x00 ; flags(24) 
            db 0x00, 0x00, 0x00, 0x12 ; entry_count(32) 
            db 0x00, 0x01 ; item_ID(16) 
            db 0x04 ; association_count(8) 
            db 0x01 ; essential(1) property_index(7) 
            db 0x02 ; essential(1) property_index(7) 
            db 0x83 ; essential(1) property_index(7) 
            db 0x84 ; essential(1) property_index(7) 
            db 0x00, 0x02 ; item_ID(16) 
            db 0x04 ; association_count(8) 
            db 0x01 ; essential(1) property_index(7) 
            db 0x02 ; essential(1) property_index(7) 
            db 0x83 ; essential(1) property_index(7) 
            db 0x84 ; essential(1) property_index(7) 
            db 0x00, 0x03 ; item_ID(16) 
            db 0x04 ; association_count(8) 
            db 0x01 ; essential(1) property_index(7) 
            db 0x02 ; essential(1) property_index(7) 
            db 0x83 ; essential(1) property_index(7) 
            db 0x84 ; essential(1) property_index(7) 
            db 0x00, 0x04 ; item_ID(16) 
            db 0x04 ; association_count(8) 
            db 0x01 ; essential(1) property_index(7) 
            db 0x02 ; essential(1) property_index(7) 
            db 0x83 ; essential(1) property_index(7) 
            db 0x84 ; essential(1) property_index(7) 
            db 0x00, 0x05 ; item_ID(16) 
            db 0x04 ; association_count(8) 
            db 0x05 ; essential(1) property_index(7) 
            db 0x02 ; essential(1) property_index(7) 
            db 0x83 ; essential(1) property_index(7) 
            db 0x84 ; essential(1) property_index(7) 
            db 0x00, 0x06 ; item_ID(16) 
            db 0x04 ; association_count(8) 
            db 0x05 ; essential(1) property_index(7) 
            db 0x02 ; essential(1) property_index(7) 
            db 0x83 ; essential(1) property_index(7) 
            db 0x84 ; essential(1) property_index(7) 
            db 0x00, 0x07 ; item_ID(16) 
            db 0x04 ; association_count(8) 
            db 0x05 ; essential(1) property_index(7) 
            db 0x02 ; essential(1) property_index(7) 
            db 0x83 ; essential(1) property_index(7) 
            db 0x84 ; essential(1) property_index(7) 
            db 0x00, 0x08 ; item_ID(16) 
            db 0x04 ; association_count(8) 
            db 0x05 ; essential(1) property_index(7) 
            db 0x02 ; essential(1) property_index(7) 
            db 0x83 ; essential(1) property_index(7) 
            db 0x84 ; essential(1) property_index(7) 
            db 0x00, 0x09 ; item_ID(16) 
            db 0x03 ; association_count(8) 
            db 0x01 ; essential(1) property_index(7) 
            db 0x8A ; essential(1) property_index(7) 
            db 0x84 ; essential(1) property_index(7) 
            db 0x00, 0x0A ; item_ID(16) 
            db 0x03 ; association_count(8) 
            db 0x01 ; essential(1) property_index(7) 
            db 0x87 ; essential(1) property_index(7) 
            db 0x84 ; essential(1) property_index(7) 
            db 0x00, 0x0B ; item_ID(16) 
            db 0x03 ; association_count(8) 
            db 0x05 ; essential(1) property_index(7) 
            db 0x86 ; essential(1) property_index(7) 
            db 0x84 ; essential(1) property_index(7) 
            db 0x00, 0x0C ; item_ID(16) 
            db 0x03 ; association_count(8) 
            db 0x05 ; essential(1) property_index(7) 
            db 0x87 ; essential(1) property_index(7) 
            db 0x84 ; essential(1) property_index(7) 
            db 0x00, 0x0D ; item_ID(16) 
            db 0x02 ; association_count(8) 
            db 0x05 ; essential(1) property_index(7) 
            db 0x84 ; essential(1) property_index(7) 
            db 0x00, 0x0E ; item_ID(16) 
            db 0x02 ; association_count(8) 
            db 0x08 ; essential(1) property_index(7) 
            db 0x84 ; essential(1) property_index(7) 
            db 0x00, 0x0F ; item_ID(16) 
            db 0x03 ; association_count(8) 
            db 0x05 ; essential(1) property_index(7) 
            db 0x86 ; essential(1) property_index(7) 
            db 0x84 ; essential(1) property_index(7) 
            db 0x00, 0x10 ; item_ID(16) 
            db 0x03 ; association_count(8) 
            db 0x09 ; essential(1) property_index(7) 
            db 0x86 ; essential(1) property_index(7) 
            db 0x84 ; essential(1) property_index(7) 
            db 0x00, 0x11 ; item_ID(16) 
            db 0x02 ; association_count(8) 
            db 0x0B ; essential(1) property_index(7) 
            db 0x84 ; essential(1) property_index(7) 
            db 0x00, 0x12 ; item_ID(16) 
            db 0x03 ; association_count(8) 
            db 0x0B ; essential(1) property_index(7) 
            db 0x86 ; essential(1) property_index(7) 
            db 0x84 ; essential(1) property_index(7) 
        ipma_end:
    iprp_end:
meta_end:

mdat_start:
dd BE(mdat_end - mdat_start)
db "mdat"
db 0x00 ; derivation version
db 0x00 ; dimg flags
db 0x01 ; dimg rows_minus_one
db 0x01 ; dimg columns_minus_one
db 0x00, 0x00 ; dimg output_width
db 0x00, 0x00 ; dimg output_height
mdat_end:

; vim: syntax=nasm
