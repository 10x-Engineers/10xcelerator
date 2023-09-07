class c_1223_1;
    integer i = -202;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1223_1;
    c_1223_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx0z011zx0xxz1xxz00x000xzzxz10zxzxzxzzxzxzxzxxxzzxxxzxxxxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
