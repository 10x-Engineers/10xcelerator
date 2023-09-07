class c_3314_1;
    integer i = -551;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3314_1;
    c_3314_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10zx0zx0z10z1xzx11010x1100x0110zxzxzxzzxzzxzxzzzxzxzzzxzxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
