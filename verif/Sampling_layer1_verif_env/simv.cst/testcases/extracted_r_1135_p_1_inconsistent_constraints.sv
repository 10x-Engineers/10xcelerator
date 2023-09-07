class c_1135_1;
    integer i = -188;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1135_1;
    c_1135_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz00x1xz01xx010z1zx00xxzxxxzx10xxzzxzxzxzzzxxxxxzzzxzxxxxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
