class c_808_1;
    integer i = -133;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_808_1;
    c_808_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zx1zxxxz000xzxxxzzx1z01zxxx1xzxxxxxzzzxxxzxxzxxxxxzzzxxxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
