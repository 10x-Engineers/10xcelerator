class c_514_1;
    integer i = -84;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_514_1;
    c_514_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0z00100xz0zx111xx10xz00xxzzx0zzxxzzzzzzxzzzzxxxzxzzxxzxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
