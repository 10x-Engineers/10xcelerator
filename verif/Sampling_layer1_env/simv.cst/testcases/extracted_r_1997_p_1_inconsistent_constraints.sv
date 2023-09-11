class c_1997_1;
    integer i = -331;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1997_1;
    c_1997_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z1xx1zxz0zxx1xz1xzx000xz1z110zzxzzzzxxxxxzzzzzzxxxxzzzzxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
