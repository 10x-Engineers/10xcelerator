class c_3337_1;
    integer i = -555;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3337_1;
    c_3337_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x011x0zz111x0z1zx1z1zzx11010xxxzzxxxxzzxxzzxzxxzxxxxzxzzxzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
