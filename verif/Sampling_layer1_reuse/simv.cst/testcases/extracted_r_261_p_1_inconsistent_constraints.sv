class c_261_1;
    integer i = -42;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_261_1;
    c_261_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z1xzxzzx0z0zzz1xxx1zxz01xxx0xzxzxzzxxzxxxzzzxzxzxzzxzzxzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
