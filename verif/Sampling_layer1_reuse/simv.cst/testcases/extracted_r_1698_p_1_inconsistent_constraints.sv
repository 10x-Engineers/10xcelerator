class c_1698_1;
    integer i = -281;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1698_1;
    c_1698_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzxx1z1xx11x1z1zxx0111zx101x11zzzxzxzzzxxxxzxzxxxxzxxxxxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
