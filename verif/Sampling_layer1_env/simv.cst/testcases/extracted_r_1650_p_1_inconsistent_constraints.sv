class c_1650_1;
    integer i = -273;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1650_1;
    c_1650_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110xx1zz111xxxzxz11zzx0x011zzzzxzzzzxzzzzxzxzxzxxzzxzxzxxzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
