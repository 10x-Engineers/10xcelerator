class c_1344_1;
    integer i = -222;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1344_1;
    c_1344_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z101xxzz11zz01xx0z1x0zz1x1x11z1zxxxzxxxxzxxzzzzzzzxxzxzxzzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
