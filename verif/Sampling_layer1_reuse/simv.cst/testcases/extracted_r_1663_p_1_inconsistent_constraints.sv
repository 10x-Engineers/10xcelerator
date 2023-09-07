class c_1663_1;
    integer i = -276;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1663_1;
    c_1663_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz00z1zxz11zx10zz0z1z1x0z1011zxxzzzzxxxzzzzzzxzxxxzxzzxxxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
