class c_3167_1;
    integer i = -526;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3167_1;
    c_3167_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx1xx001010z1zzx1x0z01zxx1xx10zxzxzzxxzxxxxzzxzxzxzxxxzzxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
