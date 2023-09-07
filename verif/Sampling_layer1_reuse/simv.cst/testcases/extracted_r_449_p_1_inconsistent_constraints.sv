class c_449_1;
    integer i = -73;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_449_1;
    c_449_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xx0z1x100010zx0x1z1zz0110zxxx0xxzxzxxxxxxxzxxzxxxxxzzxxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
