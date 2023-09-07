class c_1792_1;
    integer i = -297;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1792_1;
    c_1792_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zxzxx1z010z00xxz10xz10100x1z10xxzxxxzxzzzzzzzzzzzzxxxzzzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
