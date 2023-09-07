class c_965_1;
    integer i = -159;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_965_1;
    c_965_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx000x00z01101zxx01z0z0x11010xxxzzzzxzzzzzxxzxzzzxxxxxxxxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram