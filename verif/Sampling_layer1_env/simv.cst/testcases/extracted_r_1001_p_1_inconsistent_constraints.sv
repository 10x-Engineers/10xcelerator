class c_1001_1;
    integer i = -165;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1001_1;
    c_1001_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zx1zx0z011zxz0xz100z1z00xz0z01zzzxxxzxzxzzzxzzzzzxzzxxxzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
