class c_296_1;
    integer i = -48;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_296_1;
    c_296_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zzxzx0xxxx0zzzz100x0100xz1111xxxzzzzxzxxxxxzxxxzzxzxxxxxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
