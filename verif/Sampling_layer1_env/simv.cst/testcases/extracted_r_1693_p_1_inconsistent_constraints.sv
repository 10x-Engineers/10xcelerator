class c_1693_1;
    integer i = -281;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1693_1;
    c_1693_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0011101zx1x1z00xxz00xxz1z1zx1zxzzxzxzzxzzxzzzzxxzzzzxzxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
