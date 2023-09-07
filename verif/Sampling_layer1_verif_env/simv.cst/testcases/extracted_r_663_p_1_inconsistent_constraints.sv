class c_663_1;
    integer i = -109;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_663_1;
    c_663_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z01zx0xzz1z00xxxz00zx1zxx0000z1xxzzzzxzxxxxzzzxzxzxxxxxxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
