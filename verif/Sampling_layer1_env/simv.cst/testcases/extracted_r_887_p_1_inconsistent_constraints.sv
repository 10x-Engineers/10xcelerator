class c_887_1;
    integer i = -146;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_887_1;
    c_887_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzz010xx111x00011x0x0xzxxz1x11xxxxzxzzzxzxzxzxxxzxxzzzxxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
