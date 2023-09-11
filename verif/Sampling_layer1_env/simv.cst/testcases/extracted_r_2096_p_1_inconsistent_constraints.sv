class c_2096_1;
    integer i = -348;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2096_1;
    c_2096_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11z0zx0z1x1zxzzzz1zx0x010x1zzzzxxxzxzzzzzzxxxzxxzxzxxxxzzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
