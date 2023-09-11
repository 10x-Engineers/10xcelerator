class c_1425_1;
    integer i = -236;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1425_1;
    c_1425_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zzx1zzx001z001zzzzz10zz011xzx1xxzxxxxxzxzzxxzzxzxzzxxzzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
