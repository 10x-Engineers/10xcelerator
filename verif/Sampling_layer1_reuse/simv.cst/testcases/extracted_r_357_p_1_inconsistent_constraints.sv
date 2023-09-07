class c_357_1;
    integer i = -58;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_357_1;
    c_357_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0x1xxxxzz1zz1xxz0zxz0xxxzx00x1zzzxzzxxxxzzzxzxxxzzzzxxxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
