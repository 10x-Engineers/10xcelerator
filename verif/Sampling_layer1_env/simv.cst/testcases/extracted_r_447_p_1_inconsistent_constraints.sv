class c_447_1;
    integer i = -73;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_447_1;
    c_447_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx111zx10zz10xxxx111x1z1x0xxx00xxxxzzzxzxzxzxzxxzzzzxxzxzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
