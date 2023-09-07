class c_2705_1;
    integer i = -449;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2705_1;
    c_2705_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxzzx1x00000zx0z110x0xzzzx00xx0zzzzzxzxzxzzzzxzzzzzxxxzxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
