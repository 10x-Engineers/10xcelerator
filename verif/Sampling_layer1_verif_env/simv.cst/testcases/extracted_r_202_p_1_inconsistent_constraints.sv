class c_202_1;
    integer i = -32;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_202_1;
    c_202_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10010z0xz010z110xz1zx00xx0x0x1z0xxzxxzzxzzzxxzxzzxxzzzxxzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
