class c_455_1;
    integer i = -74;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_455_1;
    c_455_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0z10z1zx1xzzx0xz0zz010z10zz000xzzxzzzxzzxzxzzzzzzxxzxxzzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
