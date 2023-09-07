class c_2248_1;
    integer i = -373;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2248_1;
    c_2248_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11011xxx0zx01xz0x11x0zzzz0xz1z0zxxzxxzzzzzxxzzzzzzzzzzzxxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
