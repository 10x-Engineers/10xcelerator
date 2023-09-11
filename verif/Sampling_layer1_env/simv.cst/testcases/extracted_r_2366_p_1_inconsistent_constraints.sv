class c_2366_1;
    integer i = -393;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2366_1;
    c_2366_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00101010101010x1x011xz1xzx0x1z0xxzzxxzzzxzxxxzzxzxzzzxxzxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
