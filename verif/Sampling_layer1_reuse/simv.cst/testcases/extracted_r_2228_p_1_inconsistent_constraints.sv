class c_2228_1;
    integer i = -370;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2228_1;
    c_2228_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx10z0110xx00100z01x100zx1xz00x0xzxxxzxzxxzxxxxxzxzzxzxzzxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
