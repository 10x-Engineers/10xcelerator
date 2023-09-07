class c_2763_1;
    integer i = -459;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2763_1;
    c_2763_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx0x0zx1zz0101x1xx0zz1x0zz110zxzxzzzxxxxxzzzzxzzxzzzxxxzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
