class c_1594_1;
    integer i = -264;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1594_1;
    c_1594_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z01xz1xz0xz1z0z01x0100xz11z0xzxxzxzzzzxxxzxzzzxzxzzxxxxzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
