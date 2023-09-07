class c_229_1;
    integer i = -37;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_229_1;
    c_229_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x1zx0xz0z000z10x1z1z0z1010xxx0xxxxxxzzzxxxxzzxxxxxxzzxxzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
