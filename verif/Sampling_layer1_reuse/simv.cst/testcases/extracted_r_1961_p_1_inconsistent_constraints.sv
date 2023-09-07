class c_1961_1;
    integer i = -325;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1961_1;
    c_1961_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10z00100z01111zx1zz00zxx1xx1011zxxxzzzxxzxzzzzxzzzzzzzxzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
