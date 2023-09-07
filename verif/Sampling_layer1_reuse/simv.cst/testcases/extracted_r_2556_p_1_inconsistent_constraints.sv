class c_2556_1;
    integer i = -424;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2556_1;
    c_2556_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00010zx00zxxxxx10011z01x1zx1z1x1zzzzxzzzzzzxzzxxzxzxxxxzxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
