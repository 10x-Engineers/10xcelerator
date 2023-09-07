class c_2983_1;
    integer i = -496;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2983_1;
    c_2983_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxxzx11zxxzx00zz1z0zz1zx0xz0zx1xxxzxzzxxzxzxzxzxxzzxzxzzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
