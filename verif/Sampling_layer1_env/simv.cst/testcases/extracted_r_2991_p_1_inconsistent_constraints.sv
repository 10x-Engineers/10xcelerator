class c_2991_1;
    integer i = -497;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2991_1;
    c_2991_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz01x1x0z1xz011x10x100zzz1x1zx1xzxzxzzxxzxzxxzxzxzzxxxzzzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
