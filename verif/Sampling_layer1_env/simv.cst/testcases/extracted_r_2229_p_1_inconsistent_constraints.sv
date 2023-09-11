class c_2229_1;
    integer i = -370;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2229_1;
    c_2229_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1010x00z1xxz01x00x000zz111x0z1x0zxxzxzzxxzxxxxxxxxzxzzxzzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
