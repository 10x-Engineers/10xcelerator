class c_2859_1;
    integer i = -475;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2859_1;
    c_2859_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zxz1xz001z1xx0x10z001x1111zzx1xzzzzxxzxxxzzzzxxxxxxzxzxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
