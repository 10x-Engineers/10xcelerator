class c_2327_1;
    integer i = -386;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2327_1;
    c_2327_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x1xz100zx0x01xxx0zz1xxzz000x11zxxzxzxxxzxxzzxzzxzzzzzzzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
